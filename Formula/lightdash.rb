class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.240.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.2/lightdash-cli-3.240.2-macos-arm64.tar.gz"
      sha256 "cabcccade13373e6d129648e5f32efb095e11cc1108ec23eb509ba6d9bd22b8e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.2/lightdash-cli-3.240.2-macos-x64.tar.gz"
      sha256 "1827118bfd63268fb448648147317d88f903017be4fa4b759590f95681576f83"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.240.2/lightdash-cli-3.240.2-linux-x64.tar.gz"
    sha256 "dd21ebce7b0ba8dcc978fc6e16efa2db95c436ad48df09c30b56216b177dc714"

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
