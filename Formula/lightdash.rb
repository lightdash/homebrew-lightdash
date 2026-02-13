class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2459.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2459.3/lightdash-cli-0.2459.3-macos-arm64.tar.gz"
      sha256 "66e4989a3378d123bd85351140d4e096c279135793771755edf24366b9e8288b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2459.3/lightdash-cli-0.2459.3-macos-x64.tar.gz"
      sha256 "02d94f0e97f829268007796371b9505015c0eed2e11f3715f1c65f52fae7af02"
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
