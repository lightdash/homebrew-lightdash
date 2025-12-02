class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2217.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2217.0/lightdash-cli-0.2217.0-macos-arm64.tar.gz"
      sha256 "362f31630cba3cd0c584bd52463227762620908c9e8b90bb789b3677cc6c1470"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2217.0/lightdash-cli-0.2217.0-macos-x64.tar.gz"
      sha256 "95937df46247b510c0946430e77aa0f583d5d955c398ad6110da13f15311e18c"
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
