class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2644.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2644.0/lightdash-cli-0.2644.0-macos-arm64.tar.gz"
      sha256 "ae1f2b32a72cb047edb833e54a8baeca1cf22519536d195f29bc4df341b34d34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2644.0/lightdash-cli-0.2644.0-macos-x64.tar.gz"
      sha256 "1fd37d5598abe97f482a81faaa187caec64d94d9efca2225725b464dba440dd6"
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
