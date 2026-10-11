class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.555.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.555.0/lightdash-cli-2.555.0-macos-arm64.tar.gz"
      sha256 "8cb4244adbe8ccc5696f46423ba16e4634e9d59ac6fb2a7b6906dbe1899cf613"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.555.0/lightdash-cli-2.555.0-macos-x64.tar.gz"
      sha256 "9bd73c68af4d2163cadd5b26d6102b1b59ef7e6a27f3c016ac5336983ac9feab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.555.0/lightdash-cli-2.555.0-linux-x64.tar.gz"
    sha256 "3be6afd796096a48c1e893a04921c0b44d0356a87156b84b114366c775cf3783"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
