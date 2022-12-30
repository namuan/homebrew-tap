# Generated with JReleaser 1.4.0 at 2022-12-30T18:04:24.421537162Z
class KtCliApp < Formula
  desc "Kotlin CLI app"
  homepage "https://github.com/namuan/kt-cli-app"
  version "0.1.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/namuan/kt-cli-app/releases/download/v0.1.1/kt-cli-app-0.1.1-linux-x86_64.zip"
    sha256 "777bfc8c8c2f95c405c2f5c1beeec582a2d7e0cf6a3d47f4b6145b2271d40365"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/namuan/kt-cli-app/releases/download/v0.1.1/kt-cli-app-0.1.1-osx-x86_64.zip"
    sha256 "101ef0c665664466cc9fc45dac8089b70987644c8273ec3af30866a830a95ffc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/namuan/kt-cli-app/releases/download/v0.1.1/kt-cli-app-0.1.1-osx-x86_64.zip"
    sha256 "101ef0c665664466cc9fc45dac8089b70987644c8273ec3af30866a830a95ffc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kt-cli-app" => "kt-cli-app"
  end

  test do
    output = shell_output("#{bin}/kt-cli-app --version")
    assert_match "0.1.1", output
  end
end
