class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.122.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.122.1/lightdash-cli-2.122.1-macos-arm64.tar.gz"
      sha256 "766bbf40a704c44a5cad514e71b6d4e0739fd0f971a8d17a90c18216bf3d1f28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.122.1/lightdash-cli-2.122.1-macos-x64.tar.gz"
      sha256 "8a2311a256797322840808e63bf957d9f79cfa9ab4601e58dc2395b4b695e326"
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
