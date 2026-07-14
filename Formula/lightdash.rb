class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3371.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.2/lightdash-cli-0.3371.2-macos-arm64.tar.gz"
      sha256 "0949e1fcf0b10670bfa2df4789f7271db83a60e28a9840376561ac78a3d8113e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.2/lightdash-cli-0.3371.2-macos-x64.tar.gz"
      sha256 "43c67c9928dec5cd9f7a670c9018d5ddf3e9cd1ab65da9595f1a579addb2f1ec"
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
