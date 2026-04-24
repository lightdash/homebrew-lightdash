class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2805.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2805.1/lightdash-cli-0.2805.1-macos-arm64.tar.gz"
      sha256 "f3bd4ba89f6d6df939eb662e33aae4e886011130afb29156e397fa3f75b955bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2805.1/lightdash-cli-0.2805.1-macos-x64.tar.gz"
      sha256 "262f6c2f3dec4dea01b0fdc205625adbcbc1ca07f1e962c1e69f6e66cf2ad3e4"
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
