class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3075.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3075.1/lightdash-cli-0.3075.1-macos-arm64.tar.gz"
      sha256 "de8c6d3e2f37f3ef433f0610d9775f62def1a5b9c7e5f4b6a7c9dc66a65748bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3075.1/lightdash-cli-0.3075.1-macos-x64.tar.gz"
      sha256 "b25024bfc29736c52be974731192b79d6e1e2d3e12d844a01a47931fd06b01d9"
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
