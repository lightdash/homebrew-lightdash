class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.197.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.1/lightdash-cli-3.197.1-macos-arm64.tar.gz"
      sha256 "dfe66348c666b7eb72d1ca02a704e4c9d19e1592fbf034349e2ec11a8aaa9b22"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.1/lightdash-cli-3.197.1-macos-x64.tar.gz"
      sha256 "16920def4ee4ca1906b90005066b1dae5971193f6ba5ea7f0e1649acc2e5ee33"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.197.1/lightdash-cli-3.197.1-linux-x64.tar.gz"
    sha256 "75268998ee37f2f3639db3288e402807416b759ce00c45c679817fce8a533a0d"

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
