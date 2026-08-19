class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.5/lightdash-cli-1.202.5-macos-arm64.tar.gz"
      sha256 "dc615bf7e63ae06cf36863a238dd94b4d06f0d559273f75f4d83171aaab6b34e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.5/lightdash-cli-1.202.5-macos-x64.tar.gz"
      sha256 "360d2d316c9013e386fb9b0c7de52a89f024db50414ed3522cc06646b128b24e"
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
