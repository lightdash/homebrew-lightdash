class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.188.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.188.0/lightdash-cli-3.188.0-macos-arm64.tar.gz"
      sha256 "608a651debee39ca01bd4241df25a4fdf9aa4857653765e893d589b7b0e5707e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.188.0/lightdash-cli-3.188.0-macos-x64.tar.gz"
      sha256 "1706f1cd70a8fceef01b3986c8c3403823eb50bac8336d4a9cabcc3993f2dfe4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.188.0/lightdash-cli-3.188.0-linux-x64.tar.gz"
    sha256 "49f7f171c04b3737b53faa1c45268b09fcf20d9f128a016b76e0f5edf1092897"

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
