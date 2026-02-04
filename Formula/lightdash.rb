class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2416.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2416.0/lightdash-cli-0.2416.0-macos-arm64.tar.gz"
      sha256 "e0ef94fe437940a455999ea8f399639815daf01329684c4b301a7b4c30f069b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2416.0/lightdash-cli-0.2416.0-macos-x64.tar.gz"
      sha256 "30b80f1e5d17e402012465427d0169ec62510b1343c51fa8a91f6f0113f04269"
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
