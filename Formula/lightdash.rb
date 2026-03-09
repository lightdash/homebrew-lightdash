class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2590.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2590.1/lightdash-cli-0.2590.1-macos-arm64.tar.gz"
      sha256 "d11642a16437ef418c8415db3ae2f0ce39a3fd45bcf7295a9ff1440eecaa9657"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2590.1/lightdash-cli-0.2590.1-macos-x64.tar.gz"
      sha256 "1b76071876ec29bc24b12b0e05f98222bc11059ef287265ea774b0d5e3a3ad49"
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
