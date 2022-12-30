# Generated with JReleaser 1.4.0 at 2022-12-30T20:43:20.78762154Z
class KtCliApp < Formula
  desc "Kotlin CLI app"
  homepage "https://github.com/namuan/kt-cli-app"
  version "0.1.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/namuan/kt-cli-app/releases/download/v0.1.2/kt-cli-app-0.1.2-linux-x86_64.zip"
    sha256 "41a481bc4ee286df975fcb6eee4070ad3f349db9aa41a6c957d6a5e1aeda6b5f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/namuan/kt-cli-app/releases/download/v0.1.2/kt-cli-app-0.1.2-osx-x86_64.zip"
    sha256 "fa4c0fb796043d8d380778f394d70672454a00f9af9d75c206a706fba44f8718"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/namuan/kt-cli-app/releases/download/v0.1.2/kt-cli-app-0.1.2-osx-x86_64.zip"
    sha256 "fa4c0fb796043d8d380778f394d70672454a00f9af9d75c206a706fba44f8718"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kt-cli-app" => "kt-cli-app"
  end

  test do
    output = shell_output("#{bin}/kt-cli-app --version")
    assert_match "0.1.2", output
  end
end
