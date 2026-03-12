class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2610.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.2/lightdash-cli-0.2610.2-macos-arm64.tar.gz"
      sha256 "e930c67ba7ff5316e2b2f99830976c8575ecdc0fd0afd77fc802d5cc0d90420c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.2/lightdash-cli-0.2610.2-macos-x64.tar.gz"
      sha256 "e58650150161148c8f218e28ff49920c271c8ed2b6ec435dd3b8d5b9c12930e5"
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
