class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.328.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.3/lightdash-cli-3.328.3-macos-arm64.tar.gz"
      sha256 "815a53adcae0e084132a1188a857b056504729b0e1c81710c04cfaecccc09202"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.3/lightdash-cli-3.328.3-macos-x64.tar.gz"
      sha256 "5f0c2d98d513eb755502c9380749a5281a8737b8f150d6d698423f936f7cd660"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.328.3/lightdash-cli-3.328.3-linux-x64.tar.gz"
    sha256 "51a28bf247c40f1cadfe40202ed70b68b7c24cb40041aee94132493548df2928"

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
