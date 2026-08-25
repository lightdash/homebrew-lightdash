class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.258.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.5/lightdash-cli-1.258.5-macos-arm64.tar.gz"
      sha256 "bb501cac6594f47c5e7666bd153c6fedb243612f199efe60c4d7f6ec41d1e505"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.5/lightdash-cli-1.258.5-macos-x64.tar.gz"
      sha256 "0c7161ec5ba074524ae806fd3b47191fc7513a9c07e7896d72f5bd7492a49fa7"
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
