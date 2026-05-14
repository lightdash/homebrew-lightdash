class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2942.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2942.0/lightdash-cli-0.2942.0-macos-arm64.tar.gz"
      sha256 "d8bcbd057786c82f8a39ef70289413d6e1b528da58a4d8f9f883a4083e94fbd3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2942.0/lightdash-cli-0.2942.0-macos-x64.tar.gz"
      sha256 "f466122f50d288768cff5de3b203b1e17e3ffd002662b4b539f5359688369a3c"
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
