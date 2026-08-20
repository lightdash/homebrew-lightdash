class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.221.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.221.0/lightdash-cli-1.221.0-macos-arm64.tar.gz"
      sha256 "a306c467191d4a655f29d80403846f1abc724811d968f7656e93c83a0ef4acab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.221.0/lightdash-cli-1.221.0-macos-x64.tar.gz"
      sha256 "250646f365c744bbf3193ca0367e56e2fbecadeadaed7ee100b95607de5c212f"
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
