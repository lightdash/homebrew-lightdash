class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2826.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2826.0/lightdash-cli-0.2826.0-macos-arm64.tar.gz"
      sha256 "4e88680e9b3e03c984fe46ffa2b8d52ed73258b3a088df4f9963591bab9d1b74"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2826.0/lightdash-cli-0.2826.0-macos-x64.tar.gz"
      sha256 "5c2e31c50079be9fcbfe97ad7fd6c57655e3987d545e9a9aa62585dec5cb7691"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
