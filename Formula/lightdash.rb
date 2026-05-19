class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2972.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2972.0/lightdash-cli-0.2972.0-macos-arm64.tar.gz"
      sha256 "71405db164a3d20429e82dd3544b4978c74ca48f33f76407f29cb40a2a8f766b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2972.0/lightdash-cli-0.2972.0-macos-x64.tar.gz"
      sha256 "bd51a8e51a1df33350e7775c4d6ba0bc59228b3fa809238a20ab99df93798f67"
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
